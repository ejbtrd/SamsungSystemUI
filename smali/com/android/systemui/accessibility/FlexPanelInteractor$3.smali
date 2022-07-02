.class Lcom/android/systemui/accessibility/FlexPanelInteractor$3;
.super Ljava/lang/Object;
.source "FlexPanelInteractor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


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

    .line 127
    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-static {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->access$100(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    return-void
.end method
