const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot60a0e/",
            name: "springboot60a0e",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot60a0e/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "教学资源库系统"
        } 
    }
}
export default base
