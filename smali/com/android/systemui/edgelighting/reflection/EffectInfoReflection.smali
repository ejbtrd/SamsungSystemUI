.class public Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "EffectInfoReflection.java"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mClass:Ljava/lang/Class;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

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
    const-string v0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
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
    const-string v1, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    .line 39
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private setApplicationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 134
    const-class v2, Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 137
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setApplicationIcon"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBlackBG(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 119
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 122
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "setBlackBG"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setColors([I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 141
    const-class v2, [I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 144
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setColors"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDuration(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 98
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 101
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "setDuration"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInfinite(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 105
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 108
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "setInfinite"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNotificationKey(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 76
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 79
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setNotificationKey"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 112
    const-class v2, Landroid/app/PendingIntent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 115
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setPendingIntent"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStrokeAlpha(F)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 83
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 86
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "setStrokeAlpha"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStrokeWidth(F)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 91
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 94
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "setStrokeWidth"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTickerText([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 126
    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 130
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "setTickerText"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setColors([I)V

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setApplicationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setTickerText([Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v0

    .line 60
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setBlackBG(Z)V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getInfiniteLighting()Z

    move-result v0

    .line 64
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setInfinite(Z)V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 66
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setDuration(I)V

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    .line 68
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setStrokeWidth(F)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    .line 70
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setStrokeAlpha(F)V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->setNotificationKey(Ljava/lang/String;)V

    return-void
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    return-object p0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
