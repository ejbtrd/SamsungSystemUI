.class public Lcom/android/keyguard/punchhole/VIDirector;
.super Ljava/lang/Object;
.source "VIDirector.java"


# static fields
.field private static final PUNCH_HOLE_VI_INFO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCameraLocPercent:Landroid/graphics/PointF;

.field private final mContext:Landroid/content/Context;

.field protected mFaceVISizePercent:Landroid/graphics/PointF;

.field private mIsBouncer:Z

.field private mIsFolderOpened:Z

.field protected mVIFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_VIDirector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_PUNCHHOLE_VI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private parsePunchHolePosition(Ljava/lang/String;)V
    .locals 5

    const-string v0, "pos"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ":"

    .line 75
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 76
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v1

    .line 77
    :goto_0
    array-length v3, p1

    if-eq v3, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    iget-boolean v4, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v4, :cond_2

    move v1, v3

    :cond_2
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 82
    iget-boolean v3, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    goto :goto_2

    .line 84
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    :cond_5
    :goto_2
    return-void
.end method

.method private parsePunchHoleVISize(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "size"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ":"

    .line 91
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 92
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v1

    .line 93
    :goto_0
    array-length v3, p1

    if-eq v3, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    iget-boolean v4, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v4, :cond_2

    move v1, v3

    :cond_2
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 98
    iget-boolean v3, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    :cond_5
    :goto_2
    return-void
.end method

.method private parsePunchHoleVIType(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "type"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":"

    .line 108
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 109
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "punch_hole_ic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method protected getCameraLocationRatio()Landroid/graphics/PointF;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method protected getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 4

    .line 229
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->isWhiteKeyguardWallpaper()Z

    move-result v0

    const-string v1, "getFaceRecognitionVIFileName() - file name = "

    const-string v2, ".json"

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_whitebg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getScreenRotation()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getVIViewLocation(IZ)Landroid/graphics/Rect;
    .locals 9

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getCameraLocationRatio()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 155
    sget-object p0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVIViewLocation() - return; vi size is not supported, animation = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result p1

    .line 160
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    move-result v4

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result p0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    int-to-float p0, p1

    .line 176
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    mul-float v7, v5, v6

    sub-float/2addr v2, v7

    mul-float/2addr v2, p0

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 177
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v3

    sub-float/2addr v1, v6

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr p0, v5

    add-float/2addr v2, p0

    float-to-int p0, v2

    .line 178
    iput p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, v1

    mul-float/2addr v4, v3

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 179
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    int-to-float p0, p1

    .line 170
    iget v2, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, p0

    int-to-float v2, v4

    iget v4, v3, Landroid/graphics/PointF;->x:F

    mul-float v7, v2, v4

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 171
    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v7, p0, v3

    mul-float/2addr v7, v6

    sub-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    float-to-int v2, v5

    .line 172
    iput v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    float-to-int p0, v1

    .line 173
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    int-to-float p0, p1

    .line 164
    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p0

    int-to-float v4, v4

    iget v7, v3, Landroid/graphics/PointF;->x:F

    mul-float v8, v4, v7

    mul-float/2addr v8, v6

    sub-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 165
    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v4

    iget v1, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, p0, v1

    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 166
    iput v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v3

    mul-float/2addr p0, v1

    add-float/2addr v2, p0

    float-to-int p0, v2

    .line 167
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz p2, :cond_4

    .line 184
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 185
    iget p2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    .line 186
    iput p0, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    return-object v0
.end method

.method public getVIViewRotation()I
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x5a

    return p0

    :cond_1
    const/16 p0, 0x10e

    return p0
.end method

.method public initialize()Z
    .locals 5

    .line 54
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ","

    .line 58
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 60
    invoke-direct {p0, v4}, Lcom/android/keyguard/punchhole/VIDirector;->parsePunchHolePosition(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v4}, Lcom/android/keyguard/punchhole/VIDirector;->parsePunchHoleVISize(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v4}, Lcom/android/keyguard/punchhole/VIDirector;->parsePunchHoleVIType(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public initialize(Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->initialize()Z

    move-result p0

    return p0
.end method

.method isWhiteKeyguardWallpaper()Z
    .locals 0

    .line 239
    iget-boolean p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    if-eqz p0, :cond_0

    const-string p0, "background"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "top"

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    return-void
.end method
