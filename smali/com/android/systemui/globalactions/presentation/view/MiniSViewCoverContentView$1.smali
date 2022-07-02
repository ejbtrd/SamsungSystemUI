.class Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;
.super Ljava/lang/Object;
.source "MiniSViewCoverContentView.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

.field private toastMessage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$QOCC77gp0vsZAFgB7FI6AwfGKSw(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->lambda$getDismissRunnable$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getDismissRunnable$0()V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$800(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$600(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 329
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;)V

    return-object v0
.end method

.method public getForceDismissState()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Z

    move-result p0

    return p0
.end method

.method public getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$700(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getToastMessage()Ljava/lang/String;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->toastMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setColumn(I)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$500(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setFlagsForForceDismiss(Z)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$800(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->access$902(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Z)Z

    return-void
.end method

.method public setToastMessage(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->toastMessage:Ljava/lang/String;

    return-void
.end method
