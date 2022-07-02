.class Lcom/android/keyguard/KeyguardSimPersoViewController$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPersoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$000(Lcom/android/keyguard/KeyguardSimPersoViewController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$002(Lcom/android/keyguard/KeyguardSimPersoViewController;I)I

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$100(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$300(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$200(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$300(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method
