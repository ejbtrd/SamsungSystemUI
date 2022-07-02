.class public Lcom/android/launcher3/icons/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field public static sOnNewBitmapRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$nWC-qLw6D-l8ASiZoBWOYgQdw-0()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getArea(Landroid/graphics/Region;)I
    .locals 4

    .line 81
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 83
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method

.method public static noteNewBitmapCreated()V
    .locals 1

    .line 94
    sget-object v0, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static setColorAlphaBound(II)I
    .locals 1

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
