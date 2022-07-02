.class public final synthetic Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->$r8$lambda$ANOqdX5be6UxcfEi5zTgOMy-Zac(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
