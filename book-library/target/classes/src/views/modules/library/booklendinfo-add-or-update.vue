<template>
  <el-dialog
    :title="!dataForm.id ? '新增' : '修改'"
    :close-on-click-modal="false"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" ref="dataForm" @keyup.enter.native="dataFormSubmit()" label-width="80px">
    <el-form-item label="借阅书籍" prop="bookId">
      <el-input v-model="dataForm.bookId" placeholder="借阅书籍"></el-input>
    </el-form-item>
    <el-form-item label="借阅人" prop="userId">
      <el-input v-model="dataForm.userId" placeholder="借阅人"></el-input>
    </el-form-item>
    <el-form-item label="借阅时间" prop="lendTime">
      <el-input v-model="dataForm.lendTime" placeholder="借阅时间"></el-input>
    </el-form-item>
    <el-form-item label="归还时间" prop="returnTime">
      <el-input v-model="dataForm.returnTime" placeholder="归还时间"></el-input>
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
          bookId: '',
          userId: '',
          lendTime: '',
          returnTime: ''
        },
        dataRule: {
          bookId: [
            { required: true, message: '借阅书籍不能为空', trigger: 'blur' }
          ],
          userId: [
            { required: true, message: '借阅人不能为空', trigger: 'blur' }
          ],
          lendTime: [
            { required: true, message: '借阅时间不能为空', trigger: 'blur' }
          ],
          returnTime: [
            { required: true, message: '归还时间不能为空', trigger: 'blur' }
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
              url: this.$http.adornUrl(`/library/booklendinfo/info/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams()
            }).then(({data}) => {
              if (data && data.code === 0) {
                this.dataForm.bookId = data.bookLendInfo.bookId
                this.dataForm.userId = data.bookLendInfo.userId
                this.dataForm.lendTime = data.bookLendInfo.lendTime
                this.dataForm.returnTime = data.bookLendInfo.returnTime
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
              url: this.$http.adornUrl(`/library/booklendinfo/${!this.dataForm.id ? 'save' : 'update'}`),
              method: 'post',
              data: this.$http.adornData({
                'id': this.dataForm.id || undefined,
                'bookId': this.dataForm.bookId,
                'userId': this.dataForm.userId,
                'lendTime': this.dataForm.lendTime,
                'returnTime': this.dataForm.returnTime
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
