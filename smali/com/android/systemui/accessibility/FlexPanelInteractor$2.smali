.class Lcom/android/systemui/accessibility/FlexPanelInteractor$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "FlexPanelInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/FlexPanelInteractor;->addCallbackForFlexMode(Z)V
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

    .line 117
    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-static {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->access$100(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    :cond_0
    return-void
.end method
