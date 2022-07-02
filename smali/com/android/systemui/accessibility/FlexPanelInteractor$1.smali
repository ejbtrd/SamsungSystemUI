.class Lcom/android/systemui/accessibility/FlexPanelInteractor$1;
.super Ljava/lang/Object;
.source "FlexPanelInteractor.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/FlexPanelInteractor;->addCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->isTableMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->access$000(Lcom/android/systemui/accessibility/FlexPanelInteractor;Z)V

    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->access$000(Lcom/android/systemui/accessibility/FlexPanelInteractor;Z)V

    return-void
.end method
