.class Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final fromPluginLock:Z

.field public final success:Z

.field public final wallpaerPath:Ljava/lang/String;

.field public final which:I


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 882
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 884
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    const/4 p1, 0x0

    .line 887
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    const/4 p1, 0x2

    .line 890
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    return-void
.end method

.method constructor <init>(ZLandroid/graphics/Bitmap;ZLjava/lang/String;I)V
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 897
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 899
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    .line 902
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    .line 905
    iput p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    return-void
.end method

.method static fail(Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    .locals 3

    .line 921
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method static success(Landroid/graphics/Bitmap;Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    .locals 2

    .line 911
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method static success(Landroid/graphics/Bitmap;ZLjava/lang/String;I)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    .locals 7

    .line 916
    new-instance v6, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;ZLjava/lang/String;I)V

    return-object v6
.end method
