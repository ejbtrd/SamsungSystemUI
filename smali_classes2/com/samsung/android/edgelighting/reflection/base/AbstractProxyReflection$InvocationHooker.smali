.class Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvocationHooker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->getHashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AbstractProxyReflection"

    const-string p1, "Equals method "

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;->invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
