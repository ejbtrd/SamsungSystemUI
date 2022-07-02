.class Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionBitmap"
.end annotation


# instance fields
.field private alpha:I

.field private bitmapLoaded:Z

.field private calculatedSum:F

.field private image:Landroid/graphics/Bitmap;

.field private isBackground:Z

.field private matrix:Landroid/graphics/Matrix;

.field private path:Ljava/lang/String;

.field private prevAlpha:I

.field private stayPoint1:I

.field private stayPoint2:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 940
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 941
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;)I
    .locals 0

    .line 921
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1103
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    return-object p0
.end method

.method public getAlpha()I
    .locals 0

    .line 1083
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return p0
.end method

.method public getBitmapLoaded()Z
    .locals 0

    .line 982
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPrevAlpha()I
    .locals 0

    .line 1091
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 966
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/4 v0, 0x0

    .line 946
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    return-void
.end method

.method public isBackground()Z
    .locals 0

    .line 986
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    return p0
.end method

.method public recycle()V
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setAlpha(FF)V
    .locals 7

    cmpg-float p1, p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1003
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    rem-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 1004
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    .line 1005
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    goto :goto_1

    .line 1006
    :cond_1
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    const/high16 v2, -0x3fc00000    # -3.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 1014
    :cond_2
    :goto_1
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v3, v2

    cmpl-float v3, p2, v3

    const/4 v4, -0x3

    const/high16 v5, 0x41c00000    # 24.0f

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v3, v3

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_3

    .line 1015
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    .line 1018
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz p2, :cond_4

    .line 1019
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    :cond_4
    int-to-float p2, v2

    if-ne v2, v4, :cond_5

    .line 1024
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 1027
    :cond_5
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v6, v3

    cmpl-float v6, v2, v6

    if-lez v6, :cond_6

    add-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    .line 1028
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    .line 1030
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    :cond_6
    cmpg-float v3, v2, p2

    if-gez v3, :cond_7

    sub-float/2addr p2, v5

    cmpl-float p2, v2, p2

    if-lez p2, :cond_7

    .line 1034
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez p2, :cond_7

    if-nez p1, :cond_7

    .line 1036
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 1045
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    const/16 p2, 0xff

    if-eqz p1, :cond_8

    .line 1046
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    .line 1049
    :cond_8
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v0, p1

    if-ne p1, v4, :cond_9

    .line 1052
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 1055
    :cond_9
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    const/high16 v3, 0x437f0000    # 255.0f

    if-lez v2, :cond_a

    add-int/lit8 v2, v1, 0x18

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_a

    int-to-float v0, v1

    sub-float/2addr p1, v0

    .line 1057
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v5

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    :cond_a
    cmpg-float v1, p1, v0

    if-gez v1, :cond_b

    sub-float v1, v0, v5

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    sub-float/2addr p1, v0

    .line 1063
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v5

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    .line 1068
    :cond_b
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1074
    :goto_3
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    if-le p1, p2, :cond_c

    .line 1075
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 1078
    :cond_c
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    return-void
.end method

.method public setBitmapLoaded(Z)V
    .locals 0

    .line 978
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .line 1087
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->prevAlpha:I

    return-void
.end method

.method public setStayPoint(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x3

    .line 957
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    add-int/lit8 p1, p1, 0x3

    .line 958
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 962
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->type:I

    return-void
.end method
