.class Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;
.super Ljava/lang/Object;
.source "PanelCarrierLabelManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavSettingsHelper"
.end annotation


# instance fields
.field private IsNavigationBarGestureHintEnabled:Z

.field private IsNavigationBarGestureProtectionEnabled:Z

.field private IsNavigationBarHideKeyboardButtonEnabled:Z

.field private final SETTINGS_VALUE_LIST:[Landroid/net/Uri;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "game_double_swipe_enable"

    .line 320
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    .line 321
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    .line 322
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    .line 316
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public getDumpText()Ljava/lang/String;
    .locals 3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavSettingsHelper("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "navGestureProtectionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", navGestureHintEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", navHideKeyboardButtonEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateNavBarHeight(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public updateSettingsAndCheckChanges()Z
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 334
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    .line 335
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    .line 336
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    .line 337
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureProtectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    .line 340
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    if-ne v5, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    if-ne p0, v3, :cond_1

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
