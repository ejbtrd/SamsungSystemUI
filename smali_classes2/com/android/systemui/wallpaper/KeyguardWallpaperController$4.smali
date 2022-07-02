.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;
.super Landroid/os/Handler;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Looper;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Message;)V

    return-void
.end method
