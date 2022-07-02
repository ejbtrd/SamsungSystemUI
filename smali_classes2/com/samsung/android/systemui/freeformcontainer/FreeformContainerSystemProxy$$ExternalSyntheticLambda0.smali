.class public final synthetic Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityOptions;

    invoke-static {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->$r8$lambda$r1V3qB2LRadmaIgzdkit-H5g8MY(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    return-void
.end method
