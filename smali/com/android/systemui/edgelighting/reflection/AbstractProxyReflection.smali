.class public abstract Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;
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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 64
    new-instance p1, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;)V

    invoke-static {p2, v0, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHashCode()I
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create reflection hash code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractProxyReflection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getProxyInstance()Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
