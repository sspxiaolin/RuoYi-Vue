# 基础镜像，选择合适的Java版本镜像，这里以OpenJDK 11为例
FROM openjdk:11-jdk

# 设置工作目录，一般可以创建一个名为app的目录
WORKDIR /app

# 将打包后的Spring Boot项目的jar包复制到容器内的工作目录中，假设你的jar包名为your-project.jar，注意替换成实际名称
COPY target/your-project.jar /app/ruoyiadmin.jar

# 暴露应用运行的端口，比如你的Spring Boot应用运行在8080端口
EXPOSE 8080

# 运行命令，启动Spring Boot应用
CMD ["java", "-jar", "ruoyiadmin.jar"]