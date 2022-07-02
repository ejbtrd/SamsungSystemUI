.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableMDMWallpaper()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string/jumbo v1, "onEnableMDMWallpaper"

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v0, 0x25d

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    return-void
.end method

.method public onMDMWallpaperChanged()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string/jumbo v1, "onMDMWallpaperChanged"

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v0, 0x25e

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    return-void
.end method
