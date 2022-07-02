.class Lcom/android/systemui/qs/buttons/QSButtonViewController$1;
.super Ljava/lang/Object;
.source "QSButtonViewController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSButtonViewController;-><init>(Lcom/android/systemui/qs/buttons/QSButtonView;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSButtonViewController;

.field final synthetic val$settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonViewController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->this$0:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->val$settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "emergency_mode"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enable_reserve_max_mode"

    .line 84
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSButtonViewController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->this$0:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->access$000(Lcom/android/systemui/qs/buttons/QSButtonViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonView;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->val$settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->val$settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateState(ZZ)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;->this$0:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->access$100(Lcom/android/systemui/qs/buttons/QSButtonViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateEverything()V

    :cond_1
    return-void
.end method
