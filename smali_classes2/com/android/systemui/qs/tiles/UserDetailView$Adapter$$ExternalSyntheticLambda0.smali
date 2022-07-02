.class public final synthetic Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Landroid/view/View;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->$r8$lambda$j62zued2hUP91AuJHB-1hlS2tgI(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Landroid/view/View;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method
