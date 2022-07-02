.class Lcom/android/systemui/qs/SecQSLayoutDetail$5;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecQSLayoutDetail;->setClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$5;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$5;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$600(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$400(Lcom/android/systemui/qs/SecQSLayoutDetail;ILandroid/view/View;)V

    return-void
.end method
