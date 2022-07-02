.class Lcom/android/systemui/statusbar/policy/MobileSignalController$6;
.super Landroid/database/ContentObserver;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1680
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    .line 1681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "smart_bonding"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 1680
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    .line 1682
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    .line 1683
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NWBoosterObserver onChange():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
