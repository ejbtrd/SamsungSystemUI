.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;
.source "ViewTreeObserverOnComputeInternalInsetsListenerReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    .line 21
    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractProxyReflection;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 31
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onComputeInternalInsets"

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 35
    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;->onComputeInternalInsets(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onComputeInternalInsets(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inoutInfo"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method
