.class Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvocationHooker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->getHashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
