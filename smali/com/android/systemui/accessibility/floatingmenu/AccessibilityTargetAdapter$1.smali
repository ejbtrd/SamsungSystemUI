.class Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityTargetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->onBindViewHolder(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field final synthetic val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->access$000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
