.class Lcom/android/systemui/settings/brightness/BrightnessController$10;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1400(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 533
    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$2300(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    const-string/jumbo v2, "no_config_brightness"

    .line 531
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->access$1600(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$10$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController$10;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
