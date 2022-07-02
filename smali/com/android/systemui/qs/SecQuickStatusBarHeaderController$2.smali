.class Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;
.super Ljava/lang/Object;
.source "SecQuickStatusBarHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$700(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_CLICK:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$200(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;->this$0:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->access$800(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->showDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
