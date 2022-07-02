.class public Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "AbsEdgeLightingEffectReflection.java"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    .line 15
    iput-object p4, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 p1, 0x2

    new-array p4, p1, [Ljava/lang/Class;

    .line 16
    const-class v0, Landroid/content/Context;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-class v0, Landroid/content/Context;

    const/4 v2, 0x1

    aput-object v0, p4, v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    .line 19
    invoke-virtual {p0, p4, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect"

    return-object p0
.end method

.method public setOnCallback(Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->getClassArray(Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "setOnCallback"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start(Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->getClassArray(Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->getInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "start"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v1, "stop"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public supportEffect()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v1, "supportEffect"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public update(Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->getClassArray(Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->getInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "update"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
