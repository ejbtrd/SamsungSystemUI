.class public Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;
.super Ljava/lang/Object;
.source "KeyguardWallpaperColors.java"


# static fields
.field public static final DEBUG_FLAG_NAMES:[Ljava/lang/String;

.field public static final NUM_SEPARATED_AREA:I

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperColors"

.field public static final UPDATE_FLAGS:[J

.field public static final UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

.field public static final UPDATE_FLAGS_SHADOW:[J


# instance fields
.field private final BITMAP_SCALE_RATIO:F

.field private final DOMINANT_COLOR_NUMBER:I

.field private mContext:Landroid/content/Context;

.field private mSemWallpaperColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/wallpaper/colors/ColorData;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWallpaperColorsCover:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/wallpaper/colors/ColorData;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [J

    .line 63
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    new-array v2, v0, [J

    .line 71
    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    new-array v0, v0, [J

    .line 79
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    const-string v2, "STATUSBAR "

    const-string v3, "BODY_TOP "

    const-string v4, "BODY_MID "

    const-string v5, "BODY_BOTTOM "

    const-string v6, "NAVIBAR "

    const-string v7, "BACKGROUND "

    .line 87
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    .line 96
    array-length v0, v1

    sput v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    return-void

    :array_0
    .array-data 8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data

    :array_1
    .array-data 8
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
    .end array-data

    :array_2
    .array-data 8
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d4ccccd    # 0.05f

    .line 98
    iput v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->BITMAP_SCALE_RATIO:F

    const/16 v0, 0xa

    .line 99
    iput v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DOMINANT_COLOR_NUMBER:I

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private checkColorChanges(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J
    .locals 8

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/colors/ColorData;->getColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/colors/ColorData;->getColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    if-nez p0, :cond_2

    return-wide v0

    :cond_2
    const/4 p2, 0x0

    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    .line 298
    :goto_1
    sget p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge p2, p1, :cond_b

    .line 299
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v2, p1, p2

    invoke-virtual {p0, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 300
    aget-wide v2, p1, p2

    or-long/2addr v0, v2

    .line 301
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v2, p1, p2

    or-long/2addr v0, v2

    .line 302
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v2, p1, p2

    or-long/2addr v0, v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    if-nez p0, :cond_6

    .line 306
    :goto_2
    sget p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge p2, p0, :cond_b

    .line 307
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v2, p0, p2

    invoke-virtual {p1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 308
    aget-wide v2, p0, p2

    or-long/2addr v0, v2

    .line 309
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v2, p0, p2

    or-long/2addr v0, v2

    .line 310
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v2, p0, p2

    or-long/2addr v0, v2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    move v2, p2

    .line 314
    :goto_3
    sget v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge v2, v3, :cond_b

    .line 315
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v4, v3, v2

    invoke-virtual {p1, v4, v5}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    .line 316
    aget-wide v5, v3, v2

    invoke-virtual {p0, v5, v6}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    if-nez v4, :cond_7

    if-eqz v5, :cond_a

    .line 319
    aget-wide v3, v3, v2

    or-long/2addr v0, v3

    .line 320
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v3, v3, v2

    or-long/2addr v0, v3

    .line 321
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v3, v3, v2

    :goto_4
    or-long/2addr v0, v3

    goto :goto_5

    .line 324
    :cond_7
    invoke-virtual {v4, v5, p2}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 325
    aget-wide v6, v3, v2

    or-long/2addr v0, v6

    :cond_8
    const/4 v3, 0x1

    .line 327
    invoke-virtual {v4, v5, v3}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 328
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v6, v3, v2

    or-long/2addr v0, v6

    :cond_9
    const/4 v3, 0x2

    .line 330
    invoke-virtual {v4, v5, v3}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 331
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v3, v3, v2

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    return-wide v0
.end method

.method public static getChangeFlagsString(J)Ljava/lang/String;
    .locals 8

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "THEME "

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "| "

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const-string v2, "COLOR_THEME "

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x2

    and-long/2addr v5, p0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    const-string v2, "ADAPTIVE "

    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v5, v2

    .line 401
    :goto_0
    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 402
    aget-wide v6, v6, v5

    and-long/2addr v6, p0

    cmp-long v6, v6, v3

    if-eqz v6, :cond_3

    .line 403
    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :goto_1
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    array-length v5, v1

    if-ge v2, v5, :cond_6

    .line 410
    aget-wide v5, v1, v2

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    const-string p0, "SHADOW "

    .line 411
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const-string p0, "]"

    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isOpenThemeSet(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p0

    :goto_1
    if-eqz p2, :cond_2

    return v0

    :cond_2
    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method private writeSettingsWallpaperColors(JLandroid/app/SemWallpaperColors;)V
    .locals 6

    .line 345
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeSettingsWallpaperColors() flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    const-wide/16 v2, 0x200

    and-long v4, p1, v2

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 353
    invoke-virtual {p3, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    .line 356
    iget-object v3, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_1
    const-wide/16 v2, 0x10

    and-long v4, p1, v2

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2

    .line 361
    invoke-virtual {p3, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 363
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    .line 364
    iget-object v3, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_2
    const-wide/16 v2, 0x100

    and-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    .line 369
    invoke-virtual {p3, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 371
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkBaseUpdates(Landroid/app/SemWallpaperColors;)J
    .locals 5

    .line 197
    new-instance v0, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 198
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    new-instance v1, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 199
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v4

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    move-result-wide p0

    return-wide p0
.end method

.method public checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J
    .locals 4

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->isOpenThemeSet(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAdaptiveColorEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 220
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkColorChanges(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    move-result-wide p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "\n"

    .line 421
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tLast wallpaper color = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 426
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nDump error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(ZI)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 1

    .line 177
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(ZI)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getSemWallpaperColors(ZI)Landroid/app/SemWallpaperColors;
    .locals 0

    if-eqz p1, :cond_0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/ColorData;->getColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/ColorData;->getColors()Landroid/app/SemWallpaperColors;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J
    .locals 1

    .line 118
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public setSemWallpaperColors(Landroid/app/SemWallpaperColors;II)J
    .locals 8

    .line 131
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const-string/jumbo v1, "setSemWallpaperColors: Nothing to do for which = "

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v4, p2, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 139
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_1
    :goto_0
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, p2, 0x10

    if-nez v4, :cond_2

    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_2

    .line 134
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 145
    :cond_2
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    :goto_1
    if-eqz p1, :cond_4

    .line 148
    sget-object v4, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSemWallpaperColors: userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", colors = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v4, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 152
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 153
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    .line 155
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/colors/ColorData;

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    move-result-wide v5

    .line 156
    invoke-virtual {v1, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-wide v5, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 159
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    cmp-long p2, v5, v2

    if-eqz p2, :cond_6

    .line 164
    invoke-direct {p0, v5, v6, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->writeSettingsWallpaperColors(JLandroid/app/SemWallpaperColors;)V

    :cond_6
    return-wide v5
.end method
