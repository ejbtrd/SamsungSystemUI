.class Lcom/android/systemui/doze/AODUi$1;
.super Ljava/lang/Object;
.source "AODUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AODUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/AODUi;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AODUi;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeSuppressedChanged(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    invoke-static {v0}, Lcom/android/systemui/doze/AODUi;->access$000(Lcom/android/systemui/doze/AODUi;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    .line 73
    invoke-static {v0}, Lcom/android/systemui/doze/AODUi;->access$000(Lcom/android/systemui/doze/AODUi;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 74
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method
