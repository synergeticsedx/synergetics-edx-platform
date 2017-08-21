""" Management command to course start notifier """

from django.core.management import BaseCommand

from textwrap import dedent
from course_start_notify.views import course_start_notification


class Command(BaseCommand):
    """
    Command to course start notifier courses

    Examples:

        For devstack
            ./manage.py lms course_start_notifier --settings devstack

        For production
            ./manage.py lms course_start_notifier --settings aws

    """
    help = dedent(__doc__)

    def handle(self, *args, **options):
        course_start_notification()
