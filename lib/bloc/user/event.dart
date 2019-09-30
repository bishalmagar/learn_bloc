abstract class UserFetchEvent{}

class FetchingUserEvent extends UserFetchEvent{}

class FetchUserEvent extends UserFetchEvent{}

class UserFetchedEvent extends UserFetchEvent{}
class UserFetchErrorEvent extends UserFetchEvent{}