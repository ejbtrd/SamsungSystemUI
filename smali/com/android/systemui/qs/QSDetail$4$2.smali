.class Lcom/android/systemui/qs/QSDetail$4$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$4;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$4;

.field final synthetic val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$4;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$4$2;->this$1:Lcom/android/systemui/qs/QSDetail$4;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$x:I

    iput p4, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 722
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4$2;->this$1:Lcom/android/systemui/qs/QSDetail$4;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4$2;->this$1:Lcom/android/systemui/qs/QSDetail$4;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget v2, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$x:I

    iget p0, p0, Lcom/android/systemui/qs/QSDetail$4$2;->val$y:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    :cond_0
    return-void
.end method
