.class Lcom/android/systemui/settings/brightness/BrightnessController$10$1;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessController$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/brightness/BrightnessController$10;

.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController$10;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessController$10;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;->this$1:Lcom/android/systemui/settings/brightness/BrightnessController$10;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$2900(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
