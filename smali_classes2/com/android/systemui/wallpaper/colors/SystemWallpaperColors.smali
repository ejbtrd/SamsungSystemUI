.class public final Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;
.super Ljava/lang/Object;
.source "SystemWallpaperColors.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemWallpaperColors"


# instance fields
.field private final mSystemWallpaperColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private adjustWhich(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_0

    and-int/lit8 p0, p1, 0x10

    if-nez p0, :cond_0

    and-int/lit8 p0, p1, 0x8

    if-nez p0, :cond_0

    or-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method


# virtual methods
.method public getColor(I)Landroid/app/SemWallpaperColors;
    .locals 3

    .line 42
    sget-object v0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColor: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->adjustWhich(I)I

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public setColor(ILandroid/app/SemWallpaperColors;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->adjustWhich(I)I

    move-result p1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
