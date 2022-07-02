.class public Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;
.super Ljava/lang/Object;
.source "MicrophoneToggleTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MicrophoneToggleDetailAdapter"
.end annotation


# instance fields
.field private mDetailSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;


# direct methods
.method public static synthetic $r8$lambda$Lbrf9-_d0x-zzLxr62LFiUf5OHE(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->lambda$setToggleState$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetailSummary()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$600(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->qs_microphone_toggle_detail_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setToggleState$0()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->getSensorId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->getSensorId()I

    move-result p0

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-interface {v1, v2, v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$200(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    sget p2, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63e

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$000(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->qs_microphone_toggle_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$100(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$300(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$300(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$400(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->getSensorId()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    iget-object v4, v3, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 169
    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->getSensorId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 168
    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IIZ)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;->access$500(Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MicrophoneToggleTile$MicrophoneToggleDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
