.class Lcom/android/systemui/settings/multisim/MultiSIMController$5;
.super Ljava/lang/Object;
.source "MultiSIMController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "airplane_mode_on"

    .line 348
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChanged() - airplane_mode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiSIMController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    :cond_1
    return-void
.end method
