.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/app/SemWallpaperColors;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/SemWallpaperColors;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->get()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method
