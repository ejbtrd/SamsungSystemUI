.class public Lcom/samsung/android/edgelighting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final MODEL_DEFAULT_DENSITY:I

.field public static MODEL_NAME:Ljava/lang/String;

.field public static final MODEL_NAME_FOR_JPN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product.model"

    .line 27
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.factory.model"

    .line 28
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME_FOR_JPN:Ljava/lang/String;

    const-string/jumbo v0, "ro.sf.lcd_density"

    const/4 v1, -0x1

    .line 29
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_DEFAULT_DENSITY:I

    .line 38
    const-class v0, Lcom/samsung/android/edgelighting/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCopyCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "copiedCode"
        }
    .end annotation

    const-string/jumbo v0, "semclipboard"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .line 149
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->hasSemEmergencyManagerClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 151
    invoke-virtual {v1, p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "clipboard"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 156
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 159
    :goto_0
    sget-object p0, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCopyCode : copiedCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 124
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.product.device"

    .line 207
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceRadiusValue()F
    .locals 4

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "f2q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4079999a    # 3.9f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    .line 85
    :goto_0
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getDeviceRadius : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getFinalRadius(Landroid/content/Context;Z)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "isMultiResolutionDevice"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME_FOR_JPN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    sput-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 235
    :cond_0
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-S908"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_s908:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 237
    :cond_1
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-S906"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_s906:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 239
    :cond_2
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-S901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_s901:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 241
    :cond_3
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-N980"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_n980:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 243
    :cond_4
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-N981"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_n981:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 245
    :cond_5
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-N98"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_n98x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 247
    :cond_6
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-N97"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 248
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_n97x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 249
    :cond_7
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-N77"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_n77x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 251
    :cond_8
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G981"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 252
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g981:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 253
    :cond_9
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G988"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 254
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g988:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 255
    :cond_a
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G98"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 256
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g98x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 257
    :cond_b
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G97"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 258
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g97x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 259
    :cond_c
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G715"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 260
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g715:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 261
    :cond_d
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G77"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 262
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g77x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 263
    :cond_e
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G78"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 264
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g78x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 265
    :cond_f
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-F71"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 266
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f71x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 267
    :cond_10
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-F7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 268
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f7xx:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 269
    :cond_11
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-F92"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-W2022"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_2

    .line 271
    :cond_12
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-F91"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 272
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isFolded()Z

    move-result v1

    if-eqz v1, :cond_13

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f91x_folded:I

    goto :goto_0

    :cond_13
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f91x:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 273
    :cond_14
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-F90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 274
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isFolded()Z

    move-result v1

    if-eqz v1, :cond_15

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f90x_folded:I

    goto :goto_1

    :cond_15
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f90x:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 275
    :cond_16
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G991"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 276
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g991:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 277
    :cond_17
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G99"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 278
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g99x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 279
    :cond_18
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-G52"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 280
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_g52x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 281
    :cond_19
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-A51"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 282
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_a51x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 283
    :cond_1a
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-A52"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 284
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_a52x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 285
    :cond_1b
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-A72"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 286
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_a72x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_4

    .line 287
    :cond_1c
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-A71"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 288
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_a71x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 289
    :cond_1d
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-A32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 290
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_a32x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 291
    :cond_1e
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-T97"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 292
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_t97x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 293
    :cond_1f
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-T87"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 294
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_t87x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 295
    :cond_20
    sget-object v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v2, "SM-M127"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 296
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_m127:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 298
    :cond_21
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 270
    :cond_22
    :goto_2
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isFolded()Z

    move-result v1

    if-eqz v1, :cond_23

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f92x_folded:I

    goto :goto_3

    :cond_23
    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->sm_f92x:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 301
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 302
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v1, :cond_24

    goto :goto_5

    :cond_24
    move v2, v1

    .line 304
    :goto_5
    sget v1, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_DEFAULT_DENSITY:I

    int-to-float v3, v1

    if-eqz p1, :cond_26

    int-to-float p1, v2

    const/high16 v2, 0x44870000    # 1080.0f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_25

    const p1, 0x3faaa993    # 1.3333f

    :goto_6
    int-to-float v1, v1

    mul-float v3, v1, p1

    goto :goto_7

    :cond_25
    cmpg-float p1, p1, v2

    if-gez p1, :cond_26

    const p1, 0x3f2aacda    # 0.6667f

    goto :goto_6

    .line 314
    :cond_26
    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v3, p0

    int-to-float p0, v0

    mul-float/2addr p0, v3

    return p0
.end method

.method public static getRadiusController()F
    .locals 2

    .line 50
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getDeviceRadiusValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    :goto_0
    return v0
.end method

.method public static getRoundDeltaX()F
    .locals 7

    .line 102
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    const-string v2, "cornerDeltaX"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ","

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, ":"

    .line 108
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 110
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 111
    sget-object v3, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Round delta X  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    sget-object v3, Lcom/samsung/android/edgelighting/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Not number format : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static hasSemEmergencyManagerClass()Z
    .locals 1

    const-string v0, "com.samsung.android.emergencymode.SemEmergencyManager"

    .line 164
    invoke-static {v0}, Lcom/samsung/android/edgelighting/utils/Utils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAODShowState(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isFolded()Z
    .locals 1

    .line 180
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotRoundingModel()Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getDeviceRadiusValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandMode(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "any_screen_running"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isRTLMode(Landroid/content/res/Configuration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportBlurEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isWinnerAndFolded()Z
    .locals 2

    .line 188
    sget-object v0, Lcom/samsung/android/edgelighting/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    const-string v1, "SM-F90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
