.class Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;
.super Ljava/lang/Object;
.source "KeyguardWallpaperEventHandler.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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

    .line 225
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const-string v0, "KeyguardWallpaperEventHandler"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onChanged: uri is null. Return!"

    .line 229
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 235
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_9

    const-string/jumbo v1, "minimal_battery_use"

    .line 236
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "emergency_mode"

    .line 242
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    .line 244
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v0

    if-eq v0, p1, :cond_a

    .line 245
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    .line 246
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x25a

    invoke-static {p0, p1, v2, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "lockscreen_wallpaper"

    .line 248
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x386

    if-eqz v1, :cond_3

    .line 249
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "lockscreen_wallpaper_sub"

    .line 250
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "lock_adaptive_color"

    .line 252
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x387

    invoke-static {p0, p1, v2, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    const-string v1, "lockscreen_wallpaper_transparent"

    .line 254
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x388

    if-eqz v1, :cond_6

    .line 255
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 256
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 257
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v4, p1, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "wallpapertheme_state"

    .line 258
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 259
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x2dd

    invoke-static {p0, p1, v2, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_8
    const-string/jumbo p0, "onChanged: Unhandled uri."

    .line 261
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    .line 238
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    if-eq v0, p1, :cond_a

    .line 239
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    const/16 p1, 0x25b

    invoke-static {p0, p1, v2, v3, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V

    :cond_a
    :goto_1
    return-void
.end method
