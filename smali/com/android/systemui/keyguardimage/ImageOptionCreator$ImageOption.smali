.class Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
.super Ljava/lang/Object;
.source "ImageOptionCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageOption"
.end annotation


# instance fields
.field clockColor:I

.field clockColorIndex:I

.field clockFontColorType:I

.field clockType:Ljava/lang/String;

.field color:[I

.field displayType:I

.field height:I

.field isRtl:Z

.field realHeight:I

.field realWidth:I

.field scale:F

.field type:I

.field useClockColor:Z

.field useDefaultColor:Z

.field width:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 229
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v1, 0x0

    .line 234
    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 236
    iput v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 237
    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/4 v2, 0x0

    .line 238
    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 239
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    .line 240
    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    .line 241
    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 242
    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 243
    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    .line 254
    iget v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 255
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-boolean v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string/jumbo v2, "width=%d, height=%d, scale=%f, useDefaultColor=%s"

    .line 254
    invoke-static {v2, v1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-boolean v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    if-nez v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget p0, p0, v6

    .line 258
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v6

    const-string p0, ", main=0x%x, 2nd=0x%x, bg_main=0x%x, bg_2nd=0x%x"

    .line 257
    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
