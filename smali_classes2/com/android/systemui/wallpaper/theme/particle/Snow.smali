.class public Lcom/android/systemui/wallpaper/theme/particle/Snow;
.super Ljava/lang/Object;
.source "Snow.java"


# static fields
.field private static final FIXEDALPHAS:[I

.field private static final FIXEDRADIUS:[I


# instance fields
.field public alpha:I

.field public cx:F

.field public cy:F

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x66
        0x66
        0x66
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    add-int/lit8 p1, p1, -0x20

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 62
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 64
    sget-object p1, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    .line 65
    sget-object p1, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    .line 67
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    .line 68
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 90
    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    .line 75
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Snow;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Snow;->clear()V

    :cond_0
    return-void
.end method
