.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SplashscreenContentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public static synthetic $r8$lambda$qXr6mWg6QHrq2BngqdDmuWCPLlM(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->lambda$registerObserver$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$z0HdSy5kLi8Ohb_-u9HJPoI1OBc(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;ILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->lambda$onChange$1(ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/os/Handler;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1138
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1139
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onChange$1(ILandroid/net/Uri;)V
    .locals 3

    .line 1168
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : uri="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings()V

    return-void
.end method

.method private synthetic lambda$registerObserver$0()V
    .locals 5

    .line 1144
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    .line 1145
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSettingObserver:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    .line 1146
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v4, 0x0

    .line 1144
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1147
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_appicon_theme_package"

    .line 1148
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSettingObserver:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    .line 1149
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1147
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1150
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings()V

    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 1155
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1156
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    .line 1155
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1402(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Z)Z

    .line 1157
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1159
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "current_sec_appicon_theme_package"

    .line 1158
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1402(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Z)Z

    .line 1161
    :cond_2
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : mIsThemeIconApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1162
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1161
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1167
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;ILandroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerObserver()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
