.class public final Lcom/android/systemui/wallpaper/colors/ColorData;
.super Ljava/lang/Object;
.source "ColorData.kt"


# instance fields
.field private final colors:Landroid/app/SemWallpaperColors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isLockStarEnabled:Z

.field private final isOpenTheme:Z

.field private final isOpenThemeLockWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/app/SemWallpaperColors;ZZZ)V
    .locals 1
    .param p1    # Landroid/app/SemWallpaperColors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 7
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/wallpaper/colors/ColorData;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    iget-object v3, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    iget-boolean v3, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    iget-boolean v3, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getColors()Landroid/app/SemWallpaperColors;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isOpenTheme()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorData(colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenThemeLockWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockStarEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
