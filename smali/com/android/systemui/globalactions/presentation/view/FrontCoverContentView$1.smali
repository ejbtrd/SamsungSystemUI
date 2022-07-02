.class Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;
.super Ljava/lang/Object;
.source "FrontCoverContentView.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->registerFoldStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {v0, p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$002(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;Z)Z

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$100(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$200(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onDismiss()V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$300(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-static {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->access$400(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)Landroid/app/Presentation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
