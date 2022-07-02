.class public final synthetic Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->$r8$lambda$Smxi98XjHAm3QN_rmE01AaSHEwc(Landroid/content/Context;I)V

    return-void
.end method
