.class public Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;
.source "IEdgeLightingEffectCallbackReflection.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static createBaseClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$IEdgeLIghtingEffectCallback"

    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getClassArray(Ljava/lang/ClassLoader;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$IEdgeLIghtingEffectCallback"

    .line 70
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeInternal: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IEdgeLightingEffectCallbackReflection"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "onStarted"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onStarted()V

    goto :goto_0

    :cond_0
    const-string p2, "onStopped"

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onStopped()V

    goto :goto_0

    :cond_1
    const-string p2, "onClickedToast"

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onClickedToast()V

    goto :goto_0

    :cond_2
    const-string p2, "onSwipedToast"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onSwipedToast()V

    goto :goto_0

    :cond_3
    const-string p2, "onFlingDownedToast"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->onFlingDownedToast(Z)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onClickedToast()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onFlingDownedToast(Z)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onStarted()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onStopped()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onSwipedToast()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
