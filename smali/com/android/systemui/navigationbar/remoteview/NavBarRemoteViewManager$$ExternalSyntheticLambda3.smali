.class public final synthetic Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->$r8$lambda$O2HQVlRkirju4PWiuDD00IzZ31A(ILcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    move-result p0

    return p0
.end method
