.class Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SubDisplayVolumePanelPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$1;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$1;->this$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEND_ACCESSIBILITY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v3, 0x1

    .line 124
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
