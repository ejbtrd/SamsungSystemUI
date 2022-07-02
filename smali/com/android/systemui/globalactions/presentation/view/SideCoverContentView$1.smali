.class Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;
.super Ljava/lang/Object;
.source "SideCoverContentView.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

.field private toastMessage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8yZ_jfaCoRVu7uoQwxNly8kEGoE(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->lambda$getDismissRunnable$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getDismissRunnable$0()V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$700(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 393
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;)V

    return-object v0
.end method

.method public getForceDismissState()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$1000(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Z

    move-result p0

    return p0
.end method

.method public getListView()Landroid/view/ViewGroup;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$600(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$800(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getToastMessage()Ljava/lang/String;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->toastMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setColumn(I)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$600(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setFlagsForForceDismiss(Z)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$900(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    .line 404
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->access$1002(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Z)Z

    return-void
.end method

.method public setToastMessage(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->toastMessage:Ljava/lang/String;

    return-void
.end method
