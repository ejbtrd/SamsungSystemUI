.class public abstract Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;
    }
.end annotation


# instance fields
.field protected mBaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mClassName:Ljava/lang/String;

.field protected mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "constructorArgTypes",
            "constructorArgValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractProxyReflection Unable to instantiate class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    const-string v0, "AbstractProxyReflection"

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "There\'s no "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v2, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;)V

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 65
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/dexmaker/stock/ProxyBuilder;->forClass(Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p2}, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues([Ljava/lang/Object;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;

    invoke-direct {p3, p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;)V

    .line 68
    invoke-virtual {p2, p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->handler(Ljava/lang/reflect/InvocationHandler;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/google/dexmaker/stock/ProxyBuilder;->build()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Occur IOException during build proxy instance : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getHashCode()I
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create reflection hash code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractProxyReflection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getProxyInstance()Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation
.end method
