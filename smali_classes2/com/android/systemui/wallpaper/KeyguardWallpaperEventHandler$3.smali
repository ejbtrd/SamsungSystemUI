.class Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;
.super Ljava/lang/Object;
.source "KeyguardWallpaperEventHandler.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 3

    const-string v0, "KeyguardWallpaperEventHandler"

    const-string/jumbo v1, "onFinishedGoingToSleep()"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x343

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    const-string v0, "KeyguardWallpaperEventHandler"

    const-string/jumbo v1, "onFinishedWakingUp()"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x344

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 3

    const-string v0, "KeyguardWallpaperEventHandler"

    const-string/jumbo v1, "onStartedGoingToSleep())"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x341

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-string v0, "KeyguardWallpaperEventHandler"

    const-string/jumbo v1, "onStartedWakingUp()"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 v0, 0x342

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    return-void
.end method
