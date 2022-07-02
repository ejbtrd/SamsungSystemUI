.class Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$200(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->detail_slider:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-virtual {v1, v3}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$102(Lcom/android/systemui/settings/brightness/BrightnessDetail;Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->val$context:Landroid/content/Context;

    .line 144
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v3

    const-string/jumbo v4, "no_config_brightness"

    .line 143
    invoke-static {v1, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$302(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$402(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$400(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$400(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->isSliderEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$500(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$300(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$602(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    .line 153
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$600(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->startObserving()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$100(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$302(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 160
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$600(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->stopObserving()V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    invoke-static {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->access$602(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;)Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

    return-void
.end method
