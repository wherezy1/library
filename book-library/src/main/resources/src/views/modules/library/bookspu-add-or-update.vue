<template>
  <el-dialog
    :title="!dataForm.id ? '新增' : '修改'"
    :close-on-click-modal="false"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" ref="dataForm" @keyup.enter.native="dataFormSubmit()" label-width="80px">
    <el-form-item label="书籍名" prop="bookName">
      <el-input v-model="dataForm.bookName" placeholder="书籍名"></el-input>
    </el-form-item>
    <el-form-item label="作者id" prop="writerId">
      <el-input v-model="dataForm.writerId" placeholder="作者id"></el-input>
    </el-form-item>
    <el-form-item label="出版商" prop="publisher">
      <el-input v-model="dataForm.publisher" placeholder="出版商"></el-input>
    </el-form-item>
    <el-form-item label="购入时间" prop="inputTime">
      <el-input v-model="dataForm.inputTime" placeholder="购入时间"></el-input>
    </el-form-item>
    <el-form-item label="书籍描述" prop="decribe">
      <el-input v-model="dataForm.decribe" placeholder="书籍描述"></el-input>
    </el-form-item>
    <el-form-item label="图片" prop="image">
      <el-input v-model="dataForm.image" placeholder="图片"></el-input>
    </el-form-item>
    </el-form>
    <span slot="footer" class="dialog-footer">
      <el-button @click="visible = false">取消</el-button>
      <el-button type="primary" @click="dataFormSubmit()">确定</el-button>
    </span>
  </el-dialog>
</template>

<script>
  export default {
    data () {
      return {
        visible: false,
        dataForm: {
          id: 0,
          bookName: '',
          writerId: '',
          publisher: '',
          inputTime: '',
          decribe: '',
          image: ''
        },
        dataRule: {
          bookName: [
            { required: true, message: '书籍名不能为空', trigger: 'blur' }
          ],
          writerId: [
            { required: true, message: '作者id不能为空', trigger: 'blur' }
          ],
          publisher: [
            { required: true, message: '出版商不能为空', trigger: 'blur' }
          ],
          inputTime: [
            { required: true, message: '购入时间不能为空', trigger: 'blur' }
          ],
          decribe: [
            { required: true, message: '书籍描述不能为空', trigger: 'blur' }
          ],
          image: [
            { required: true, message: '图片不能为空', trigger: 'blur' }
          ]
        }
      }
    },
    methods: {
      init (id) {
        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/library/bookspu/info/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams()
            }).then(({data}) => {
              if (data && data.code === 0) {
                this.dataForm.bookName = data.bookSpu.bookName
                this.dataForm.writerId = data.bookSpu.writerId
                this.dataForm.publisher = data.bookSpu.publisher
                this.dataForm.inputTime = data.bookSpu.inputTime
                this.dataForm.decribe = data.bookSpu.decribe
                this.dataForm.image = data.bookSpu.image
              }
            })
          }
        })
      },
      // 表单提交
      dataFormSubmit () {
        this.$refs['dataForm'].validate((valid) => {
          if (valid) {
            this.$http({
              url: this.$http.adornUrl(`/library/bookspu/${!this.dataForm.id ? 'save' : 'update'}`),
              method: 'post',
              data: this.$http.adornData({
                'id': this.dataForm.id || undefined,
                'bookName': this.dataForm.bookName,
                'writerId': this.dataForm.writerId,
                'publisher': this.dataForm.publisher,
                'inputTime': this.dataForm.inputTime,
                'decribe': this.dataForm.decribe,
                'image': this.dataForm.image
              })
            }).then(({data}) => {
              if (data && data.code === 0) {
                this.$message({
                  message: '操作成功',
                  type: 'success',
                  duration: 1500,
                  onClose: () => {
                    this.visible = false
                    this.$emit('refreshDataList')
                  }
                })
              } else {
                this.$message.error(data.msg)
              }
            })
          }
        })
      }
    }
  }
</script>
