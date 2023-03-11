<template>
  <el-dialog
    :title="!dataForm.id ? '新增' : '修改'"
    :close-on-click-modal="false"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" ref="dataForm" @keyup.enter.native="dataFormSubmit()" label-width="80px">
    <el-form-item label="菜单名" prop="menu">
      <el-input v-model="dataForm.menu" placeholder="菜单名"></el-input>
    </el-form-item>
    <el-form-item label="权限" prop="permission">
      <el-input v-model="dataForm.permission" placeholder="权限"></el-input>
    </el-form-item>
    <el-form-item label="是否启用（0正常， 1停用）" prop="status">
      <el-input v-model="dataForm.status" placeholder="是否启用（0正常， 1停用）"></el-input>
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
          menu: '',
          permission: '',
          status: ''
        },
        dataRule: {
          menu: [
            { required: true, message: '菜单名不能为空', trigger: 'blur' }
          ],
          permission: [
            { required: true, message: '权限不能为空', trigger: 'blur' }
          ],
          status: [
            { required: true, message: '是否启用（0正常， 1停用）不能为空', trigger: 'blur' }
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
              url: this.$http.adornUrl(`/member/menu/info/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams()
            }).then(({data}) => {
              if (data && data.code === 0) {
                this.dataForm.menu = data.menu.menu
                this.dataForm.permission = data.menu.permission
                this.dataForm.status = data.menu.status
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
              url: this.$http.adornUrl(`/member/menu/${!this.dataForm.id ? 'save' : 'update'}`),
              method: 'post',
              data: this.$http.adornData({
                'id': this.dataForm.id || undefined,
                'menu': this.dataForm.menu,
                'permission': this.dataForm.permission,
                'status': this.dataForm.status
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
