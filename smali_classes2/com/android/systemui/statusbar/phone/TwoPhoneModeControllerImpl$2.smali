.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;
.super Ljava/lang/Object;
.source "TwoPhoneModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->isOnFeature()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    .line 89
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->isUserCreatedInMultiUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11100db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    :goto_0
    sget v3, Lcom/android/systemui/R$drawable;->ic_stat_sys_twophone_p_mode:I

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->getLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isEnableToTurnOnTwoPhoneMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar.TwoPhoneModeController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->updateValues()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->getLogString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    if-eqz v0, :cond_5

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->isRegisteredAndEnabled()Z

    move-result v0

    invoke-static {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;ZI)V

    goto :goto_2

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->isRegisteredAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget v0, Lcom/android/systemui/R$drawable;->ic_stat_sys_twophone_b_mode:I

    goto :goto_1

    .line 106
    :cond_4
    sget v0, Lcom/android/systemui/R$drawable;->ic_stat_sys_twophone_b_mode_blocked:I

    .line 108
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;ZI)V

    goto :goto_2

    .line 111
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    sget v0, Lcom/android/systemui/R$drawable;->ic_stat_sys_twophone_b_mode:I

    invoke-static {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;ZI)V

    goto :goto_2

    .line 114
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;ZI)V

    :goto_2
    return-void
.end method
