.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/systemui/media/MediaData;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/media/MediaAction;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/media/MediaData;

    iput p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/media/MediaAction;

    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget v1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/media/MediaData;

    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/media/MediaAction;

    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Runnable;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel;->$r8$lambda$pEBW48UgechVhFc-PrE-XV5AAn8(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
