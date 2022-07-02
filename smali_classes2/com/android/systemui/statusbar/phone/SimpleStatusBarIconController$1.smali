.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "simple_status_bar"

    .line 55
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getSimpleStatusBarValue()I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChanged:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleStatusBarIconController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$100(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;->onStatusBarIconSettingChanged(I)V

    :cond_0
    return-void
.end method
