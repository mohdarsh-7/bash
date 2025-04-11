BEGIN{
print "The data file contents:"
print "user\t Sheel"
FS=":"
}
}
print $1 "\t" $7
}
END{
print"End of List"
}

