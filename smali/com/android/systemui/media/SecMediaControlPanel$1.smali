.class Lcom/android/systemui/media/SecMediaControlPanel$1;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecMediaControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$000(Lcom/android/systemui/media/SecMediaControlPanel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$200(Lcom/android/systemui/media/SecMediaControlPanel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPNE0021"

    const-string/jumbo v1, "type"

    const-string v2, "button"

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->toggle()V

    :cond_2
    return-void
.end method
